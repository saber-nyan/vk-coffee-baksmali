.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$7;
.super Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
.source "FriendsImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->updateItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;
    .param p2, "icon"    # I
    .param p3, "title"    # I
    .param p4, "subtitle"    # I

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$7;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;-><init>(III)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$7;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->legacy:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->openNearby()V

    .line 231
    return-void
.end method
