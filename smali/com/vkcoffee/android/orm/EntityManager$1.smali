.class Lcom/vkcoffee/android/orm/EntityManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/orm/EntityManager;->openConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/orm/EntityManager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/EntityManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/orm/EntityManager;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "x3"    # I

    .prologue
    .line 495
    iput-object p1, p0, Lcom/vkcoffee/android/orm/EntityManager$1;->this$0:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager$1;->this$0:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/EntityManager;->migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 499
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vkcoffee/android/orm/EntityManager$1;->this$0:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/EntityManager;->migrateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 504
    return-void
.end method
