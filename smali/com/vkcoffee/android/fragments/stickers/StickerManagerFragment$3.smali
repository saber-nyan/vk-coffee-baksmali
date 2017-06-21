.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "StickerManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->sendReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

.field private final synthetic val$position:I

.field private final synthetic val$prevPosition:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/app/Fragment;II)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$position:I

    iput p4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$prevPosition:I

    .line 426
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4

    .prologue
    .line 433
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mReorderReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 434
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 435
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->access$4(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$position:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$prevPosition:I

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;II)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mReorderReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 429
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$position:I

    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->val$prevPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->swap(II)V

    .line 430
    return-void
.end method
