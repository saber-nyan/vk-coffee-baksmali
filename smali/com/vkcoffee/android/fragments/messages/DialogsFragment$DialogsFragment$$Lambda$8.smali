.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$8"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1433
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/functions/VoidF2;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1436
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;
    .param p2, "var2"    # Ljava/lang/Object;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "var1":Ljava/lang/Object;
    check-cast p2, Lcom/vkcoffee/android/DialogEntry;

    .end local p2    # "var2":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$confirmAndClearHistory$464(Ljava/lang/Integer;Lcom/vkcoffee/android/DialogEntry;)V

    .line 1441
    return-void
.end method
