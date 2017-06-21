.class Lcom/vk/attachpicker/screen/EditorScreen$8;
.super Ljava/lang/Object;
.source "EditorScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->onStickerClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadAndShow$110(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 865
    const v0, 0x7f0805c8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vk/attachpicker/widget/LoadingDialog;->getInstance(Landroid/content/Context;Ljava/lang/Integer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 866
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 867
    return-void
.end method

.method private loadAndShow(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "emoji"    # Z
    .param p3, "metaInfo"    # Ljava/lang/String;

    .prologue
    .line 862
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 863
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 864
    .local v4, "dialog":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/app/Dialog;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$8;->val$activity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v3

    .line 869
    .local v3, "dialogShow":Ljava/lang/Runnable;
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vk/attachpicker/screen/EditorScreen$8$1;-><init>(Lcom/vk/attachpicker/screen/EditorScreen$8;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 909
    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->execPool([Ljava/lang/Object;)Lcom/vk/attachpicker/util/AsyncTask;

    .line 910
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1300(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 921
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 2
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 925
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$8;->loadAndShow(Ljava/lang/String;ZLjava/lang/String;)V

    .line 926
    return-void
.end method

.method public onMaskSelected(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 930
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$8;->loadAndShow(Ljava/lang/String;ZLjava/lang/String;)V

    .line 931
    return-void
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packId"    # I
    .param p2, "stickerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "stickerReferrer"    # Ljava/lang/String;

    .prologue
    .line 914
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosAddEditorRecentSticker;

    invoke-direct {v0, p2}, Lcom/vkcoffee/android/api/photos/PhotosAddEditorRecentSticker;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/photos/PhotosAddEditorRecentSticker;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 915
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$8;->loadAndShow(Ljava/lang/String;ZLjava/lang/String;)V

    .line 916
    return-void
.end method
