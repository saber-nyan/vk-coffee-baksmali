.class Lcom/vkcoffee/android/fragments/news/NewPostFragment$2;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$2;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1606
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$2;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    const v3, 0x430e068

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/vkcoffee/android/Platform;->ModalPlatform(Landroid/app/Activity;ZZ)V

    .line 1609
    return-void

    .line 1606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
