.class Lcom/vkcoffee/android/AudioPlayerActivity$15$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$15;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$15;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$15;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/AudioPlayerActivity$15$1;)Lcom/vkcoffee/android/AudioPlayerActivity$15;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$15;

    return-object v0
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4

    .prologue
    .line 500
    .local p1, "errorResponse":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$15;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$15;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$15;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    const-string v2, "\u041e\u0439... \u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a :("

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$15;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$15;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$15;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$15$1$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$15$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method
