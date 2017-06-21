.class Lcom/vkcoffee/android/LongPollService$8;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->getURL(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$8;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 2
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    sget-boolean v1, Lcom/vkcoffee/android/LongPollService;->connected:Z

    if-nez v1, :cond_0

    .line 997
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkcoffee/android/LongPollService;->connected:Z

    .line 998
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    .line 1000
    :cond_0
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 1001
    .local v0, "req":Lcom/squareup/okhttp/Request;
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1
.end method
