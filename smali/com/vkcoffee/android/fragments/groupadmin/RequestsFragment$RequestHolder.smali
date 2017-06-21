.class Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;
.super Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;
.source "RequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .line 121
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080230

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-void
.end method
