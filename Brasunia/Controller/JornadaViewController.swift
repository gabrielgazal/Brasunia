//
//  JornadaViewController.swift
//  Brasunia
//
//  Created by Kelvin Javorski Soares on 01/09/19.
//  Copyright © 2019 Brasunia. All rights reserved.
//

import UIKit

class JornadaViewController: UIViewController {

    @IBOutlet weak var costuraFullView: UIView!
    @IBOutlet weak var costuraFillView: UIView!
    @IBOutlet weak var costuraPorcentagem: UILabel!
    @IBOutlet weak var costuraRazao: UILabel!
    
    
    @IBOutlet weak var eletronicaFullView: UIView!
    @IBOutlet weak var eletronicaFillView: UIView!
    @IBOutlet weak var eletronicaPorcentagem: UILabel!
    @IBOutlet weak var eletronicaRazao: UILabel!
    
    
    @IBOutlet weak var marcenariaFullView: UIView!
    @IBOutlet weak var marcenariaFillView: UIView!
    @IBOutlet weak var marcenariaPorcentagem: UILabel!
    @IBOutlet weak var marcenariaRazao: UILabel!
    
    @IBOutlet weak var programacaoFullView: UIView!
    @IBOutlet weak var programacaoFillView: UIView!
    @IBOutlet weak var programacaoPorcentagem: UILabel!
    @IBOutlet weak var programacaoRazao: UILabel!
    
    var FullViewList : [UIView] = []
    var FillViewList : [UIView] = []
    var PorcentagemLabelList : [UILabel] = []
    var RazaoLabelList : [UILabel] = []
    
    @IBOutlet weak var nomeUsuarioLbl: UILabel!
    
    
    var cursosCompletos : [CourseInfo] = []
    var cursosTotais : [CourseInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FullViewList = [costuraFullView, marcenariaFullView, eletronicaFullView, programacaoFullView]
        FillViewList = [costuraFillView, marcenariaFillView, eletronicaFillView, programacaoFillView]
        PorcentagemLabelList = [costuraPorcentagem, marcenariaPorcentagem, eletronicaPorcentagem, programacaoPorcentagem]
        RazaoLabelList = [costuraRazao, marcenariaRazao, eletronicaRazao, programacaoRazao]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if Model.shared.userID == "" {
            performSegue(withIdentifier: "jornada", sender: self)
        }
        cursosCompletos = Model.shared.cursosCompletos
        cursosTotais = Model.shared.cursos
        criaAnimacao(Fundo: costuraFullView, Progresso: costuraFillView, Trilha: "Costura")
        criaAnimacao(Fundo: eletronicaFullView, Progresso: eletronicaFillView, Trilha: "Eletrônica")
        criaAnimacao(Fundo: marcenariaFullView, Progresso: marcenariaFillView, Trilha: "Marcenaria")
        criaAnimacao(Fundo: programacaoFullView, Progresso: programacaoFillView, Trilha: "Programação")
        HiddenSettings(bool: true)
      
    }
    
    func criaAnimacao(Fundo fundoView: UIView, Progresso progressoView: UIView, Trilha trilha: String){
        progressoView.frame.size = CGSize(width: 0.0, height: fundoView.frame.height)
        //define o valor da barra de progresso
        
        let progressoo = CursosDaTrilha(cursosCompletos, trilha)

        let cursosTotal = CursosDaTrilha(cursosTotais, trilha)

        var progresso = 0
        var porcentagem = progressoo/cursosTotal
        switch trilha {
        case "Costura":
            porcentagem = 0.8
            progresso = Int(porcentagem * cursosTotal)
            break
        case "Marcenaria":
            porcentagem = 0.4
            progresso = Int(porcentagem * cursosTotal)
            break
        case "Eletrônica":
            porcentagem = 0.9
            progresso = Int(porcentagem * cursosTotal)
            break
        case "Programação":
            porcentagem = 0.15
            progresso = Int(porcentagem * cursosTotal)
            break
        default:
            break
        }
//        porcentagem = 0.6
        
        UIView.animate(withDuration: 4.0, animations: {
            progressoView.frame.size = CGSize(width: fundoView.frame.width * porcentagem, height: fundoView.frame.height)
        }, completion: { finished in
            //Transforma em int para mostrar em texto um unico algarismo
            let progresso = Int(progresso)
            let cursosTotal = Int(cursosTotal)
            //Mostra as labels da trilha somente após concluir a animacao
            self.HiddenSettings(bool: false)
            if(trilha == "Costura"){
                self.costuraPorcentagem.text = "\(porcentagem * 100)%"
                self.costuraRazao.text = "\(progresso)/\(cursosTotal)"
            }
            else if (trilha == "Marcenaria"){
                self.marcenariaPorcentagem.text = "\(porcentagem * 100)%"
                self.marcenariaRazao.text = "\(progresso)/\(cursosTotal)"
            }
            else if (trilha == "Eletrônica"){
                self.eletronicaPorcentagem.text = "\(porcentagem * 100)%"
                self.eletronicaRazao.text = "\(progresso)/\(cursosTotal)"
            }
            else{
                self.programacaoPorcentagem.text = "\(porcentagem * 100)%"
                self.programacaoRazao.text = "\(progresso)/\(cursosTotal)"
            }
            })
    }
    
    func CursosDaTrilha(_ cursos: [CourseInfo], _ trilha: String) -> CGFloat
    {
        var qtd = 0.0
        for curso in cursos
        {
            if (curso.trilha == trilha)
            {
                qtd+=1.0
            }
        }
        return CGFloat(qtd)
    }
    
    func HiddenSettings(bool : Bool)
    {
        for index in 0...3
        {
            PorcentagemLabelList[index].isHidden = bool
            RazaoLabelList[index].isHidden = bool
        }
    }

}

