.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;->success(Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/UserProfile;)I
    .locals 2
    .param p1, "userProfile"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "userProfile2"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 501
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v1, p2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 498
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    check-cast p2, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6$1;->compare(Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/UserProfile;)I

    move-result v0

    return v0
.end method
