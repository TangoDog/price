priceA1minNoNAt2 = mutate(priceA1minNoNAt,Phakic.Lens.Thickness =ifelse(is.na(Phakic.Lens.Thickness),
                                                                        means['Phakic.Lens.Thickness'],
                                                                        Phakic.Lens.Thickness),
                          Phakic.Anterior.Chamber.Depth =ifelse(is.na(Phakic.Anterior.Chamber.Depth),
                                                        means['Phakic.Anterior.Chamber.Depth'],
                                                        Phakic.Anterior.Chamber.Depth),
                          K1 =ifelse(is.na(K1),
                                                        means['K1'],
                                                        K1),
                          K2 =ifelse(is.na(K2),
                                                        means['K2'],
                                                        K2),
                          Hor.W.t.W =ifelse(is.na(Hor.W.t.W),
                                                        means['Hor.W.t.W'],
                                                        Hor.W.t.W),
)

priceA1minNoNAt2 = mutate(priceA1minNoNAt2,SphEqu6 = sph6 + 0.5*cyl6)
priceA1minELPs = mutate(priceA1minNoNAt2,ELP6 = FM.Calc_ELP_Post(Axial.Length,IOL.Power,SphEqu6,K1,K2))
priceA1minELPsNoNA = priceA1minELPs[-which(is.na(priceA1minELPs$ELP6)),]