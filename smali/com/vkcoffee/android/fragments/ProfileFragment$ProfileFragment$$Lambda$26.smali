.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$26;
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
    name = "ProfileFragment$$Lambda$26"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6392
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$26;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6393
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6396
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$26;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$26;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6400
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$26;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$buildInfoItems$569()V

    .line 6401
    return-void
.end method
