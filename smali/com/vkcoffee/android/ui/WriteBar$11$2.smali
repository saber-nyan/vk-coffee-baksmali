.class Lcom/vkcoffee/android/ui/WriteBar$11$2;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/WriteBar$11;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/WriteBar$11;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$11$2;->this$1:Lcom/vkcoffee/android/ui/WriteBar$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$11$2;->this$1:Lcom/vkcoffee/android/ui/WriteBar$11;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method
