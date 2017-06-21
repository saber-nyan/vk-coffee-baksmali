.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$13;
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
    name = "ProfileFragment$$Lambda$13"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6160
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6161
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;

    .prologue
    .line 6164
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$13;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$lambda$0(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 6169
    return-void
.end method
