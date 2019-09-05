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
    @IBOutlet weak var eletronicaFullView: UIView!
    @IBOutlet weak var eletronicaFillView: UIView!
    @IBOutlet weak var marcenariaFullView: UIView!
    @IBOutlet weak var marcenariaFillView: UIView!
    @IBOutlet weak var costuraLabel: UILabel!
    @IBOutlet weak var profileView: UIView!
    
    
    let Costura = JornadaInfo(trilha: "Costura", icone: "Costura", conquistas: 3, habilidades: 10, x: 100, y: 300, cor: UIColor.red)
    let Marcenaria = JornadaInfo(trilha: "Marcenaria", icone: "Marcenaria", conquistas: 5, habilidades: 14, x: 300, y: 300, cor: UIColor.blue)
    let Eletronica = JornadaInfo(trilha: "Eletrônica", icone: "Eletrônica", conquistas: 9, habilidades: 10, x: 100, y: 500, cor: UIColor.green)
    var cursosCompletos : [CourseInfo] = []
    var cursosTotais : [CourseInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = profileView.frame.width
        let x = profileView.frame.minX
        let y = profileView.frame.minY
        profileView.frame = CGRect(x: x,y: y,width: width,height: width)
        profileView.layer.masksToBounds = true
        profileView.layer.cornerRadius = width/2
//        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        createAnimationLayer(Trilha: Costura)
//        createAnimationLayer(Trilha: Marcenaria)
//        createAnimationLayer(Trilha: Eletronica)
        if Model.shared.userID == "" {
            performSegue(withIdentifier: "jornada", sender: self)
        }
        cursosCompletos = Model.shared.cursosCompletos
        cursosTotais = Model.shared.cursos
        criaAnimacao(Fundo: costuraFullView, Progresso: costuraFillView, Trilha: Costura)
        criaAnimacao(Fundo: eletronicaFullView, Progresso: eletronicaFillView, Trilha: Eletronica)
        criaAnimacao(Fundo: marcenariaFullView, Progresso: marcenariaFillView, Trilha: Marcenaria)
    }
    
    func criaAnimacao(Fundo fundoView: UIView, Progresso progressoView: UIView, Trilha trilha: JornadaInfo){
        //Define layers das views
        fundoView.layer.cornerRadius = 10
        progressoView.layer.cornerRadius = 10
        progressoView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        progressoView.frame.size = CGSize(width: 0, height: fundoView.frame.height)
        
        //define o valor da barra de progresso

        let progresso = CursosDaTrilha(cursosCompletos, trilha.trilha)


        let cursosTotal = CursosDaTrilha(cursosTotais, trilha.trilha)
//        let cursosTotal = CGFloat(1)

        
        let porcentagem = progresso/cursosTotal
        
        UIView.animate(withDuration: 2.0, animations: {
            progressoView.frame.size = CGSize(width: fundoView.frame.width * porcentagem, height: fundoView.frame.height)
        }, completion: { finished in
                self.costuraLabel.text = "\(porcentagem * 100)%"
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
}
