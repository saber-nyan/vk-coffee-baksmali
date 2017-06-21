.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;
.super Ljava/lang/Object;
.source "SuggestFriendsNearbyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;-><init>()V

    .line 138
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/BarcodeShareFragment;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->onPause()V

    .line 140
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "qrcode_dlg"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    return-void
.end method
