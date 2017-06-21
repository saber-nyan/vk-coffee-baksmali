.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$2;
.super Ljava/lang/Object;
.source "FriendsImportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$2;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$2;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080162

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 835
    return-void
.end method
