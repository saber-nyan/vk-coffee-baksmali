.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$$Lambda$36"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:[Z

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p2, "var2"    # [Z
    .param p3, "var3"    # Ljava/util/ArrayList;
    .param p4, "var4"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 6586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6587
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6588
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$2:[Z

    .line 6589
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$3:Ljava/util/ArrayList;

    .line 6590
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$4:Lcom/vkcoffee/android/UserProfile;

    .line 6591
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p1, "var1"    # [Z
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 6594
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$2:[Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$3:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$36;->arg$4:Lcom/vkcoffee/android/UserProfile;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$editFriendLists$579([ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;Landroid/content/DialogInterface;I)V

    .line 6599
    return-void
.end method
