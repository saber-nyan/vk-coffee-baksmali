.class Lcom/vkcoffee/android/fragments/ProfileFragment$38;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$editFriendLists$579([ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$newMask:I

.field private final synthetic val$userProfile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->val$userProfile:Lcom/vkcoffee/android/UserProfile;

    iput p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->val$newMask:I

    .line 5555
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 5557
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->val$userProfile:Lcom/vkcoffee/android/UserProfile;

    iget v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->val$newMask:I

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->country:I

    .line 5558
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$38;->val$userProfile:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/cache/Cache;->updateFriends(Ljava/util/List;Z)V

    .line 5559
    return-void
.end method
