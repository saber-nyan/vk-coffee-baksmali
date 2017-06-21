.class Lcom/vkcoffee/android/MAC$5;
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
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkcoffee/android/MAC$5;->val$item:I

    iput-object p2, p0, Lcom/vkcoffee/android/MAC$5;->val$activity:Landroid/app/Activity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 156
    iget v0, p0, Lcom/vkcoffee/android/MAC$5;->val$item:I

    iget-object v1, p0, Lcom/vkcoffee/android/MAC$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->access$3(ILandroid/app/Activity;)V

    .line 157
    return-void
.end method
