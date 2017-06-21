.class public Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupsFragment$3$$Lambda$1"
.end annotation


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;->instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;->instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 389
    check-cast p1, Lcom/vkcoffee/android/api/Group;

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p2, Lcom/vkcoffee/android/api/Group;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->lambda$run$388(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/api/Group;)I

    move-result v0

    return v0
.end method
