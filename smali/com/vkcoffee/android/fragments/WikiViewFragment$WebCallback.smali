.class Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;
.super Ljava/lang/Object;
.source "WikiViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;)Lcom/vkcoffee/android/fragments/WikiViewFragment;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    return-object v0
.end method


# virtual methods
.method public openPage(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$0(Lcom/vkcoffee/android/fragments/WikiViewFragment;IIZ)V

    .line 80
    return-void
.end method

.method public openPhotos([Ljava/lang/String;I)V
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "pos"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public playAudio([I[I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 12
    .param p1, "oid"    # [I
    .param p2, "aid"    # [I
    .param p3, "artist"    # [Ljava/lang/String;
    .param p4, "title"    # [Ljava/lang/String;
    .param p5, "url"    # [Ljava/lang/String;
    .param p6, "duration"    # [I
    .param p7, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 63
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-lt v8, v1, :cond_0

    .line 67
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "list_al"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v1, "position"

    move/from16 v0, p7

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v10, "intent2":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void

    .line 65
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intent2":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/AudioFile;

    aget v2, p2, v8

    aget v3, p1, v8

    aget-object v4, p3, v8

    aget-object v5, p4, v8

    aget v6, p6, v8

    aget-object v7, p5, v8

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
