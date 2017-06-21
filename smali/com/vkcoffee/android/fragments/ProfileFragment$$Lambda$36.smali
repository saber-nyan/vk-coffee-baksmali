.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:[Z

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$2:[Z

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$3:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$4:Lcom/vkcoffee/android/UserProfile;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;[ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$2:[Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$3:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$36;->arg$4:Lcom/vkcoffee/android/UserProfile;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$editFriendLists$579([ZLjava/util/ArrayList;Lcom/vkcoffee/android/UserProfile;Landroid/content/DialogInterface;I)V

    return-void
.end method
