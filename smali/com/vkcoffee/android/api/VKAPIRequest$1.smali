.class Lcom/vkcoffee/android/api/VKAPIRequest$1;
.super Ljava/lang/Object;
.source "VKAPIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/VKAPIRequest;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/VKAPIRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 271
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest$1;, "Lcom/vkcoffee/android/api/VKAPIRequest$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest$1;->this$0:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest$1;, "Lcom/vkcoffee/android/api/VKAPIRequest$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$1;->this$0:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$1;->this$0:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$1;->this$0:Lcom/vkcoffee/android/api/VKAPIRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    .line 278
    :cond_0
    return-void
.end method
