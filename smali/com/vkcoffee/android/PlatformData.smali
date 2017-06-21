.class public Lcom/vkcoffee/android/PlatformData;
.super Ljava/lang/Object;
.source "PlatformData.java"


# static fields
.field public static ANDROID:I

.field public static API_CONSOLE:I

.field public static BLACK_BERRY:I

.field private static CHANGE_PLATFORM_NOW:Ljava/lang/String;

.field private static CHANGE_PLATFORM_NOW_ONLINE:Ljava/lang/String;

.field private static EMPTY:Ljava/lang/String;

.field public static IPAD:I

.field public static IPHONE:I

.field public static KATE:I

.field public static LYNT:I

.field private static PLATFORM:Ljava/lang/String;

.field private static PLATFORM_ONLINE:Ljava/lang/String;

.field private static SECRET:Ljava/lang/String;

.field private static SID:Ljava/lang/String;

.field public static SNAPSTER:I

.field public static SYMBIAN:I

.field private static UID:Ljava/lang/String;

.field public static WIN_PC:I

.field public static WIN_PH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x69

    sput v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    .line 7
    const/16 v0, 0x9

    sput v0, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    .line 8
    const/4 v0, 0x3

    sput v0, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    .line 9
    const/4 v0, 0x4

    sput v0, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    .line 10
    const/4 v0, 0x6

    sput v0, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    .line 11
    const/4 v0, 0x5

    sput v0, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    .line 12
    const/16 v0, 0x64

    sput v0, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    .line 13
    const/16 v0, 0x6e

    sput v0, Lcom/vkcoffee/android/PlatformData;->KATE:I

    .line 14
    const/16 v0, 0x73

    sput v0, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    .line 15
    const/16 v0, 0x78

    sput v0, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    .line 16
    const/16 v0, 0x82

    sput v0, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    .line 18
    const-string v0, "uid"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->UID:Ljava/lang/String;

    .line 19
    const-string v0, "sid"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->SID:Ljava/lang/String;

    .line 20
    const-string v0, "NoValueData"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    .line 21
    const-string v0, "secret"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->SECRET:Ljava/lang/String;

    .line 22
    const-string v0, "Platform"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    .line 23
    const-string v0, "PlatformOnline"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->PLATFORM_ONLINE:Ljava/lang/String;

    .line 24
    const-string v0, "changePlatformNow"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW:Ljava/lang/String;

    .line 25
    const-string v0, "changePlatformNowOnline"

    sput-object v0, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW_ONLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Data()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static Data(I)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static changeOnlinePlatformNow(I)V
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 65
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM_ONLINE:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW_ONLINE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public static changePlatformNow(I)V
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static disableChangePlatformNow()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public static disableChangePlatformNowOnline()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW_ONLINE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public static getA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lZiGLvvehJ4k1ohPdj1CGg=="

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getA(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/vkcoffee/android/PlatformData;->Data(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lZiGLvvehJ4k1ohPdj1CGg=="

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EE4nf91YdCBAJgqMTKp1KA=="

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getB(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/vkcoffee/android/PlatformData;->Data(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EE4nf91YdCBAJgqMTKp1KA=="

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPlatform()I
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    sget v2, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentPlatformOnline()I
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM_ONLINE:Ljava/lang/String;

    sget v2, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSecret(I)Ljava/lang/String;
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->SECRET:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSid(I)Ljava/lang/String;
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 111
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->SID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusChangePlatformNow()Z
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getStatusChangePlatformNowOnline()Z
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->CHANGE_PLATFORM_NOW_ONLINE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVKsecret()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "secret"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVKsid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secretIsEmpty(I)Z
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->SECRET:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setCurrentPlatform(I)V
    .locals 2
    .param p0, "platform"    # I

    .prologue
    .line 36
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public static setCurrentPlatformOnline(I)V
    .locals 2
    .param p0, "platform"    # I

    .prologue
    .line 45
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->PLATFORM_ONLINE:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public static sidIsEmpty(I)Z
    .locals 3
    .param p0, "platform"    # I

    .prologue
    .line 115
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->SID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PlatformData;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static writeABData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "manipulate"    # I
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/vkcoffee/android/PlatformData;->Data(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    const-string v1, "lZiGLvvehJ4k1ohPdj1CGg=="

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    const-string v1, "EE4nf91YdCBAJgqMTKp1KA=="

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public static writeData(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "wall"    # Z

    .prologue
    .line 93
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v0

    .line 94
    .local v0, "platformIndex":I
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->Data()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/vkcoffee/android/PlatformData;->UID:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/PlatformData;->SID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/PlatformData;->SECRET:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void

    .line 93
    .end local v0    # "platformIndex":I
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v0

    goto :goto_0
.end method
