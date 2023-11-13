.class public abstract Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;
.super Landroidx/room/RoomDatabase;
.source "FileDataDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Companion",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;

.field public static volatile INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fileDataDao()Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;
.end method
