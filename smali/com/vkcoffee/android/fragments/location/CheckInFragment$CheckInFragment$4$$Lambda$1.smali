.class public Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;
.super Ljava/lang/Object;
.source "CheckInFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInFragment$4$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0
    .param p1, "anonymousClass4"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 576
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "anonymousClass4"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .prologue
    .line 579
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->lambda$onPostExecute$391()V

    .line 584
    return-void
.end method
