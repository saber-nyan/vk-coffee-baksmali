.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/functions/VoidF1;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/functions/VoidF1;

    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/functions/VoidF1;

    .line 1377
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/functions/VoidF1;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/functions/VoidF1;

    .prologue
    .line 1380
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/functions/VoidF1;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$457(Lcom/vkcoffee/android/functions/VoidF1;Landroid/view/View;)V

    .line 1385
    return-void
.end method
