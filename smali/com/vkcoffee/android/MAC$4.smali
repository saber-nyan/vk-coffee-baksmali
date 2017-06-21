.class Lcom/vkcoffee/android/MAC$4;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->accView(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$4;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/vkcoffee/android/MAC$4;->val$item:I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$4;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/vkcoffee/android/MAC$4;->val$item:I

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->access$1(I)I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->access$2(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/MAC;->loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    return-void
.end method
