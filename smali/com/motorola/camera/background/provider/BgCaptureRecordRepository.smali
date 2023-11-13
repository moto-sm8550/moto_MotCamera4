.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;
.super Ljava/lang/Object;
.source "BgCaptureRecordRepository.kt"


# instance fields
.field public final mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->Companion:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase$Companion;

    .line 3
    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    const-string v2, "bgCaptureRecord_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    .line 8
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    .line 9
    sput-object p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->captureRecordDao()Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    :goto_1
    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    return-void
.end method
