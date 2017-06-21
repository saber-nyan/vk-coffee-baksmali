.class public Lcom/vkcoffee/android/Statistic;
.super Ljava/lang/Object;
.source "Statistic.java"


# static fields
.field public static androidVersion:Ljava/lang/String;

.field public static deviceBrand:Ljava/lang/String;

.field public static deviceManufacter:Ljava/lang/String;

.field public static deviceModel:Ljava/lang/String;

.field public static serial:Ljava/lang/String;

.field private static typeA:Ljava/lang/String;

.field public static url:Ljava/lang/String;

.field private static user_id:Ljava/lang/String;

.field public static vkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "fc6g6BbnTeBy+cgzWttR7Pry8BvlrSbWB29oeT0Rrs244Tsm053lC2BX5vj+DUo6BjLzeFYI+kcIntxhSLMw1g=="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Statistic;->url:Ljava/lang/String;

    .line 26
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Statistic;->user_id:Ljava/lang/String;

    .line 27
    const-string v0, "undefined"

    sput-object v0, Lcom/vkcoffee/android/Statistic;->typeA:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Statistic;->deviceManufacter:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Statistic;->deviceBrand:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Statistic;->deviceModel:Ljava/lang/String;

    .line 31
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Statistic;->androidVersion:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/Statistic;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Statistic;->serial:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/vkcoffee/android/OTA;->VERSION_COFFEE:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Statistic;->vkVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/Statistic;->ok()V

    .line 22
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/vkcoffee/android/Statistic;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/vkcoffee/android/Statistic;->typeA:Ljava/lang/String;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 37
    .local v0, "mngr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method private ok()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 47
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 48
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string v2, "user_id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 49
    const-string v2, "https://api.vk.com/method/users.get"

    new-instance v3, Lcom/vkcoffee/android/Statistic$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/Statistic$1;-><init>(Lcom/vkcoffee/android/Statistic;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 92
    return-void
.end method
