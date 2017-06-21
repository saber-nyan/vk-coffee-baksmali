.class public Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupsFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V
    .locals 0
    .param p1, "groupsFragment"    # Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 367
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "groupsFragment"    # Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .prologue
    .line 370
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    check-cast p1, Lcom/vkcoffee/android/api/Group;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->lambda$onViewCreated$387(Lcom/vkcoffee/android/api/Group;)V

    .line 375
    return-void
.end method
