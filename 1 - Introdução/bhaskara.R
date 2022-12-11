bhaskara <- function(a,b,c)
{
  delta <- (b^2)-4*a*c
  xv <- (-b)/(2*a)
  yv <- (-delta)/(4*a)
    
  if(delta>0)
  {
    x1 <- (-b+sqrt(delta))/2*a
    x2 <- (-b-sqrt(delta))/2*a
    return(sprintf("Delta = %.2f, x1 = %.2f e x2 = %.2f | xv = %.2f e yv = %.2f",delta,x1,x2,xv,yv))
  }
  if(delta==0)
  {
    x <- (-b+sqrt(delta))/2*a
    return(sprintf("Delta = %.2f e x =  %.2f | xv = %.2f e yv = %.2f",delta,x,xv,yv))
  }
  if(delta<0)
  {
    return(sprintf("Não tem raizes! Delta < 0, Delta = %.2f",delta))
  }
  
  return(delta)
}

bhaskara(3,5,2) # chama a função passando os valores a,b e c.

