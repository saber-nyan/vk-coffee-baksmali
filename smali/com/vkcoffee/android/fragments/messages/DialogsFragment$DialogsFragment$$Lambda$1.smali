.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1302
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1305
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreate$453(Lcom/vkcoffee/android/DialogEntry;)V

    .line 1310
    return-void
.end method
