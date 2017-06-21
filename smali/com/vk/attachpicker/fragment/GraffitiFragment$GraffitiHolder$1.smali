.class Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;
.super Ljava/lang/Object;
.source "GraffitiFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->lambda$onLongClick$55(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

.field final synthetic val$cap$0:Lcom/vkcoffee/android/api/Document;

.field final synthetic val$cap$1:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->this$1:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    iput-object p2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->val$cap$0:Lcom/vkcoffee/android/api/Document;

    iput-object p3, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->val$cap$1:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFail()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->val$cap$1:Landroid/app/Activity;

    const v1, 0x7f08036d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->onFail()V

    .line 324
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->this$1:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    iget-object v0, v0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-virtual {v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getAdapter()Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->val$cap$0:Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->removeGraffiti(Lcom/vkcoffee/android/api/Document;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->onFail()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;->success(Ljava/lang/Integer;)V

    return-void
.end method
