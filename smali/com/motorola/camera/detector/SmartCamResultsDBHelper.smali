.class public final Lcom/motorola/camera/detector/SmartCamResultsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SmartCamResultsDBHelper.java"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "smartcam.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE smartcam_results (_id INTEGER PRIMARY KEY AUTOINCREMENT, detection TEXT NOT NULL, type INTEGER NOT NULL, scan_time INTEGER NOT NULL, frame_file TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    add-int/lit8 p2, p2, 0x1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/camera/panorama/PanoCallable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p3}, Lcom/motorola/camera/panorama/PanoCallable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
