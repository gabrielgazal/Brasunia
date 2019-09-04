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
    let Eletronica = JornadaInfo(trilha: "Eletronica", icone: "Eletronica", conquistas: 9, habilidades: 10, x: 100, y: 500, cor: UIColor.green)
    
    
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
        criaAnimacao(Fundo: costuraFullView, Progresso: costuraFillView, Trilha: Costura)
        criaAnimacao(Fundo: eletronicaFullView, Progresso: eletronicaFillView, Trilha: Eletronica)
        criaAnimacao(Fundo: marcenariaFullView, Progresso: marcenariaFillView, Trilha: Marcenaria)
        
//        createAnimationLayer(Trilha: Costura)
//        createAnimationLayer(Trilha: Marcenaria)
//        createAnimationLayer(Trilha: Eletronica)
    }
    
    func criaAnimacao(Fundo fundoView: UIView, Progresso progressoView: UIView, Trilha trilha: JornadaInfo){
        //Define layers das views
        fundoView.layer.cornerRadius = 10
        progressoView.layer.cornerRadius = 10
        progressoView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        progressoView.frame.size = CGSize(width: 0, height: fundoView.frame.height)
        
        //define o valor da barra de progresso
        let progresso = CGFloat(trilha.conquistas)
        let total = CGFloat(trilha.habilidades)
        let porcentagem = progresso/total
        
        
        UIView.animate(withDuration: 2.0, animations: {
            progressoView.frame.size = CGSize(width: fundoView.frame.width * porcentagem, height: fundoView.frame.height)
        }, completion: { finished in
                self.costuraLabel.text = "\(porcentagem)%"
            })
    }
//            "\(progressoView)%"
//    fundoView.layer.cornerRadius = 10
//    completoView.layer.cornerRadius = 10
//    completoView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
//    
//    self.completoView.frame.size = CGSize(width: 0, height: self.fundoView.frame.height)
//    
//    UIView.animate(withDuration: 2.0, animations: {
//    self.completoView.frame.size = CGSize(width: self.fundoView.frame.width * progresso, height: self.fundoView.frame.height)
//    
//    })
    
    
    
//    func createAnimationLayer(Trilha trilha: JornadaInfo)
//    {
////        let center = view.center
//        //Cria um shapeLayer
//        let shapeLayer = CAShapeLayer()
//        //Cria um track layer
//        let trackLayer = CAShapeLayer()
//        //Cria o caminho do layer
//        let circularPath = UIBezierPath(arcCenter: CGPoint(x: trilha.x, y: trilha.y), radius: 70, startAngle: -CGFloat.pi / 2, endAngle: 1.5 * CGFloat.pi, clockwise: true)
//
//        //Cria label que dá detalhes sobre as habilidades
//        let percentagemLabel: UILabel = {
//            let label = UILabel()
//            label.text = "\(trilha.trilha)\n\(trilha.conquistas) de \(trilha.habilidades) completas"
//            label.textAlignment = .center
//            label.font = UIFont.systemFont(ofSize: 20)
//            label.numberOfLines = 0
//            return label
//        }()
//
//        //Definições da track layer
//        trackLayer.path = circularPath.cgPath
//        trackLayer.strokeColor = UIColor.lightGray.cgColor
//        trackLayer.lineWidth = 20
//        trackLayer.fillColor = UIColor.clear.cgColor
//        trackLayer.lineCap = .round
//        view.layer.addSublayer(trackLayer)
//
//        //definições da shape layer
//        shapeLayer.path = circularPath.cgPath
//        shapeLayer.strokeColor = trilha.cor.cgColor
//        shapeLayer.lineWidth = 20
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        shapeLayer.lineCap = .round
//        shapeLayer.strokeEnd = 0
//        view.layer.addSublayer(shapeLayer)
//
//        //Insere a label de detalhes no centro dos circulos
//        view.addSubview(percentagemLabel)
//        percentagemLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        percentagemLabel.center = CGPoint(x: trilha.x, y: trilha.y)
//
//        //Funcao para realizar a animação
//        animateCircle(trilha, shapeLayer)
//
//    }
//
//    fileprivate func animateCircle(_ trilha: JornadaInfo, _ shapeLayer: CAShapeLayer) {
//        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
//        let conquistados = CGFloat(trilha.conquistas)
//        let total = CGFloat(trilha.habilidades)
//        let porcentagem = conquistados / total
//
//        basicAnimation.toValue = porcentagem
//        basicAnimation.duration = 2
//
//        //Mantem o resultado após a animação
//        basicAnimation.fillMode = .forwards
//        basicAnimation.isRemovedOnCompletion = false
//
//        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
//    }


//Como organizar o código e as funções
//Como colocar os objetos de acordo com o iphone/ipad
//como ajeitar as constrains
//Como encontrar o centro do circulo
}
