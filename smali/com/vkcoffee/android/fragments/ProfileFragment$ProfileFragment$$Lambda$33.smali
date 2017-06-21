.class public Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileFragment$$Lambda$33"
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
    .line 6519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6520
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 6521
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;->arg$2:Landroid/widget/EditText;

    .line 6522
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/ProfileFragment;
    .param p1, "var1"    # Landroid/widget/EditText;

    .prologue
    .line 6525
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/DialogInterface;

    .prologue
    .line 6529
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$$Lambda$33;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$showStatusEditDlg$576(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    .line 6530
    return-void
.end method
