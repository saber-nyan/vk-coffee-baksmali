.class public Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupsFragment$3$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 399
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .prologue
    .line 402
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->lambda$run$390()V

    .line 407
    return-void
.end method
