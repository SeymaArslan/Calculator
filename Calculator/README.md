#  <#Title#>


Swift Access Levels - Swift Erişim Düzeyleri

Swift 4.2+ beş farklı erişim seviyesine ve beş farklı yetki kademesine sahiptir.

1) Private: Kapsam açısından çok sınırlayıcıdır ve bir kod bloğu içerisinde bir özellik veya method oluşturduğumuzda, bu özellik veya metoda yalnızca o kod bloğunun küme parantezleri arasından erişilebilir.
2) fileprivate: En az kısıtlayıcı olduğunu söyleyebiliriz ve önerdiği gibi, özelliğimizin veya metodumuzun yalnızca bildirildiği dosya içinde erişilebilir olduğu anlamına gelir. Yani viewController.swift veya test, swift ile farklı bir dosyadan bir özelliğe veya metoda erişebiliriz.
3) internal: Özellik veya metodlarımızın mevcut uygulama modülümüzün içinde herhangi bir yerden erişilebilir olduğu anlamına gelir. Dolayısıyla, bu aynı zamanda tüm özellik ve metodlara verilen varsayılan erişim düzeyidir. Bu da var veya let anahtarlarının önüne private veya fileprivate eklemezsek tam olarak internal düzeyde erişileceğini gösterir. Ki zaten varsayılan olarak Xcode, uygulamadaki tüm dosyaların uygulamadaki tüm diğer özelliklere ve yöntemlere erişmesine izin verir. 
4) public: Bu erişim düzeyi diğer modüllere erişim izni verildiği anlamına gelir. CocoaPods ile çalışırken, bir pod modülümüz ve bir de uygulama modülümüz olduğunu görmüştük. Public erişim seviyesi de tam olarak bunun için oluşturulmuştur. Frameworks, APIs veya SDKs veya libraries oluşturduğumuzda, temel olarak, diğer modüllerin erişebilmesini ve kullanabilmesini istediğimiz bir grup kod 
5) open: En az kısıtlayıcı erişim seviyesidir. Temelde + gibidir. Bu, genel erişim düzeyinde elde ettiğimiz her şeydir, yani özellikler ve metodlar ve her şeye diğer modüller tarafından erişilebilir. Ancak aynı zamanda class ve funcs alt sınıflara ayrılmasına ve geçersiz kılınmasına da olanak tanır. Yani bu, bir şeyi open olarak etiketlediğimizde herkesin istediği her şeyi yapabileceği anlamına geliyor. 

Standart olarak uygulama geliştirmemiz için yalnızca 1 - 3 aralığındaki access levelları kullanırız. Sadece bunlarla ilgileniriz. Ancak framworks, libraries, sdks geliştirme üzerine çalışanlar 4 ve 5 seviyelerini kullanırlar. Sebebi açıkça bellidir. Bu son 2 seviye (4-5) arasındaki tek fark public sınıfın veya func ın alt sınıflara ayrılmasına ya da geçersiz kılınmasına izin vermezken, open seviyesi temel olarak istediğimiz her şeyi yapmamıza izin verir.

------------------------------------------------------------------------------------

Projede ise access level hakkında düşünürsek en iyi uygulama, varsayılan olarak var/let/func belirttiğimizde her şeye private anahtar sözcüğünü vermektir. Fakat birçok durumda, private olamaz çünkü onu mevcut kapsamı dışında başka bir yerde kullanmamız gerekebilir. Bu yüzden en mantıklı yol private ile işaretleyip kullanmamız gerektiğinde fileprivate veya internal seviyesine çıkarmaktır. Aslında private olarak işaretlememizin temel sebebi farklı bir sınıf veya başka herhangi bir yerden değiştirilmesi amaçlanmayan bir şeyi yanlışlıkla değiştiremeyeceğimiz anlamına gelir.

------------------------------------------------------------------------------------

cmd + opt + <- ile kod daraltma veya -> ile açma

------------------------------------------------------------------------------------

Struct kalıtım özelliği yok. Struct stack yani ard arda ilk giren son çıkar olarak bulunur fakat class lar heap yani yığın halinde yaşar veriler için bellekte yer ayrılır ve bu veriler heap içinde bir yere kaydedilir, yığında bulmak için bir referansı vardır. Bir diğer fark ise değer tipidir, struct lar gerçek veri değerlerini tutarken class lar referans tipidir.  

------------------------------------------------------------------------------------
