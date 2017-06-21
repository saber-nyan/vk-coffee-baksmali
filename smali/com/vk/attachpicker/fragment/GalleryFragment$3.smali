.class Lcom/vk/attachpicker/fragment/GalleryFragment$3;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/fragment/GalleryFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;ILandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    iput p2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->val$requestCode:I

    iput-object p3, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->val$a:Landroid/app/Activity;

    const v1, 0x7f080370

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    return-void
.end method

.method public onResolved(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$500(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    new-instance v3, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    iget-object v4, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v4}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;-><init>(Landroid/app/Activity;)V

    invoke-static {v2, v3}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$502(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$500(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$500(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->show()V

    .line 371
    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->val$requestCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 372
    new-instance v1, Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/attachpicker/screen/TrimScreen;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/vk/attachpicker/screen/TrimScreen$Delegate;)V

    .line 376
    .local v1, "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :goto_0
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$500(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 381
    .end local v1    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$3;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v3}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$600(Lcom/vk/attachpicker/fragment/GalleryFragment;)Z

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/vk/attachpicker/screen/EditorScreen;-><init>(Ljava/io/File;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    goto :goto_0

    .line 378
    .end local v1    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
