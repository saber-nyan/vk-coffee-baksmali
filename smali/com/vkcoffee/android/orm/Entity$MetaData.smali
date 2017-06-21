.class public final Lcom/vkcoffee/android/orm/Entity$MetaData;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaData"
.end annotation


# instance fields
.field final inheritance:Z

.field final tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/Entity;)V
    .locals 1
    .param p1, "entity"    # Lcom/vkcoffee/android/orm/Entity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Entity;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Entity$MetaData;->tableName:Ljava/lang/String;

    .line 32
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Entity;->inheritance()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Entity$MetaData;->inheritance:Z

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "inheritance"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Entity$MetaData;->tableName:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lcom/vkcoffee/android/orm/Entity$MetaData;->inheritance:Z

    .line 28
    return-void
.end method
