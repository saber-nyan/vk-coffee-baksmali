.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;->onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 819
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e1

    .line 821
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 822
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 824
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 825
    return-void
.end method
