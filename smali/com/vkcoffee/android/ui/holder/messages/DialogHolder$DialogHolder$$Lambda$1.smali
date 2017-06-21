.class public Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;
.super Ljava/lang/Object;
.source "DialogHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogHolder$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

.field private final arg$2:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0
    .param p1, "dialogHolder"    # Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
    .param p2, "dialogEntry"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

    .line 107
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    .line 108
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;Lcom/vkcoffee/android/DialogEntry;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "dialogHolder"    # Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
    .param p1, "dialogEntry"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 111
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->lambda$onLongClick$467(Lcom/vkcoffee/android/DialogEntry;Landroid/content/DialogInterface;I)V

    .line 116
    return-void
.end method
