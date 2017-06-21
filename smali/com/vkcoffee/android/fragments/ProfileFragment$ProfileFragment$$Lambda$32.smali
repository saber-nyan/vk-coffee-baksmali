.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$$Lambda$32"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p2, "var2"    # Landroid/widget/EditText;

    .prologue
    .line 6500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6501
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6502
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;->arg$2:Landroid/widget/EditText;

    .line 6503
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p1, "var1"    # Landroid/widget/EditText;

    .prologue
    .line 6506
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .prologue
    .line 6510
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$32;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$showStatusEditDlg$575(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 6511
    return-void
.end method
