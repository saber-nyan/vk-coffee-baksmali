.class Lcom/vkcoffee/android/AudioPlayerActivity$15;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$15;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    .line 493
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v6, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0435..."

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 495
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "getedName":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v5, Lcom/vkcoffee/android/api/audio/AudioGetById;

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/api/audio/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$15$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$15;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/audio/AudioGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 523
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "getedName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity$15;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v6, "\u041e\u0439... \u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a :("

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .local v4, "toast1":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
