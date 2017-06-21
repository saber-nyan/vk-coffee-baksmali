.class final Lcom/vkcoffee/android/ui/WriteBar$MenuItem;
.super Ljava/lang/Object;
.source "WriteBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/WriteBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MenuItem"
.end annotation


# instance fields
.field public final icon:I

.field public final id:I

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput p1, p0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->id:I

    .line 842
    iput p2, p0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->icon:I

    .line 843
    iput-object p3, p0, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;->title:Ljava/lang/String;

    .line 844
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/vkcoffee/android/ui/WriteBar$1;

    .prologue
    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;)V

    return-void
.end method
