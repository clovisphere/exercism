object SpaceAge {

  private val OrbitalPeriod: Int = 31_557_600

  def onEarth(age: Double): Double = age / OrbitalPeriod

  def onVenus(age: Double): Double = age / (0.61519726 * OrbitalPeriod)

  def onMercury(age: Double): Double = age / (0.2408467 * OrbitalPeriod)

  def onMars(age: Double): Double = age / (1.8808158 * OrbitalPeriod)

  def onJupiter(age: Double): Double = age / (11.862615 * OrbitalPeriod)

  def onSaturn(age: Double): Double = age / (29.447498 * OrbitalPeriod)

  def onUranus(age: Double): Double = age / (84.016846 * OrbitalPeriod)

  def onNeptune(age: Double): Double = age / (164.79132 * OrbitalPeriod)
}
