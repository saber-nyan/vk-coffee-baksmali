.class Lcom/vkcoffee/android/MainActivity$5;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MainActivity;->goCheck(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$wall:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/vkcoffee/android/MainActivity$5;->val$wall:Z

    .line 413
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
    .line 418
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "\"country\":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "\"error_code\":5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-boolean v0, p0, Lcom/vkcoffee/android/MainActivity$5;->val$wall:Z

    if-eqz v0, :cond_1

    .line 427
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatform(I)V

    goto :goto_0

    .line 429
    :cond_1
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatformOnline(I)V

    goto :goto_0

    .line 433
    :cond_2
    const-string v0, "\"error_code\":10"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    iget-boolean v0, p0, Lcom/vkcoffee/android/MainActivity$5;->val$wall:Z

    if-eqz v0, :cond_3

    .line 435
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatform(I)V

    goto :goto_0

    .line 437
    :cond_3
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatformOnline(I)V

    goto :goto_0

    .line 441
    :cond_4
    iget-boolean v0, p0, Lcom/vkcoffee/android/MainActivity$5;->val$wall:Z

    if-eqz v0, :cond_5

    .line 442
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatform(I)V

    goto :goto_0

    .line 444
    :cond_5
    sget v0, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatformOnline(I)V

    goto :goto_0
.end method
