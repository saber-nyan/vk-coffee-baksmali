.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$3;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 311
    return-void
.end method
