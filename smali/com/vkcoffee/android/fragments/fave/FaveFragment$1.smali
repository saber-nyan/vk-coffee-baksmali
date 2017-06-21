.class Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;
.super Ljava/util/ArrayList;
.source "FaveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/fave/FaveFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/fave/FaveFragment;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/fave/FaveFragment;
    .param p2, "x0"    # I

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$000(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveUserListFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$100(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$200(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$300(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$400(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;->access$500(Lcom/vkcoffee/android/fragments/fave/FaveFragment;)Lcom/vkcoffee/android/fragments/market/MarketFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveFragment$1;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
