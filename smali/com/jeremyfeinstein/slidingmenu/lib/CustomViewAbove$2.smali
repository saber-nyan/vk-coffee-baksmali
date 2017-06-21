.class Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;
.super Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 170
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
