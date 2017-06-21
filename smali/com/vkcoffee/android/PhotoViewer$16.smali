.class Lcom/vkcoffee/android/PhotoViewer$16;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$16;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 880
    packed-switch p2, :pswitch_data_0

    .line 891
    :goto_0
    return-void

    .line 882
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$16;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2000(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$16;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2100(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 888
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$16;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2200(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
