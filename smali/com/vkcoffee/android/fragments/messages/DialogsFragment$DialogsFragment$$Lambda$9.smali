.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$9"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/DialogEntry;

    .line 1451
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1454
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/DialogEntry;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$createShortcut$466(Lcom/vkcoffee/android/DialogEntry;)V

    .line 1459
    return-void
.end method
