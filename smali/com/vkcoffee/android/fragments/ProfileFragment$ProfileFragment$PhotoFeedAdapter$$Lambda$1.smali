.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$PhotoFeedAdapter$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    .prologue
    .line 6754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6755
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    .line 6756
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    .prologue
    .line 6759
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6763
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->lambda$onAppendItems$583()V

    .line 6764
    return-void
.end method
