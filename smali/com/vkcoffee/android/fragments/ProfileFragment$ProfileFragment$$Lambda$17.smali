.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;
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
    name = "ProfileFragment$$Lambda$17"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    .prologue
    .line 6229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6230
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6231
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;->arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    .line 6232
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    .prologue
    .line 6235
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$17;->arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$buildInfoItems$560(Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V

    .line 6240
    return-void
.end method
