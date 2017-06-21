.class Lcom/vkcoffee/android/LoadData$1$1$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "LoadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LoadData$1$1;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/LoadData$1$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LoadData$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/LoadData$1$1$1;->this$2:Lcom/vkcoffee/android/LoadData$1$1;

    .line 93
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Inf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "try"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method
