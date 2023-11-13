.class public final enum Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
.super Ljava/lang/Enum;
.source "TidbitAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# instance fields
.field public final sCheckinCode:I

.field public final sRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v1, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v2, "CONTACT"

    const/4 v3, 0x0

    const v4, 0x7f080184

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 2
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v4, "COPY"

    const/4 v5, 0x1

    const v6, 0x7f080185

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 3
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "DIAL"

    const/4 v7, 0x2

    const v8, 0x7f08016f

    invoke-direct {v2, v6, v7, v8, v4}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 4
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "EMAIL"

    const/4 v9, 0x3

    const v10, 0x7f0801bf

    invoke-direct {v4, v8, v9, v10, v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 5
    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v10, "EVENT"

    const/4 v11, 0x4

    const v12, 0x7f08016e

    invoke-direct {v6, v10, v11, v12, v8}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 6
    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v12, "LOCATION"

    const/4 v13, 0x5

    const v14, 0x7f0801bb

    invoke-direct {v8, v12, v13, v14, v10}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 7
    new-instance v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "SEARCH"

    const/4 v15, 0x6

    const v13, 0x7f080206

    invoke-direct {v10, v14, v15, v13, v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 8
    new-instance v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "SHARE"

    const/4 v15, 0x7

    const v11, 0x7f080209

    invoke-direct {v12, v14, v15, v11, v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 9
    new-instance v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "SMS"

    const/16 v15, 0x8

    const v9, 0x7f0801c0

    invoke-direct {v11, v14, v15, v9, v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 10
    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "WEB"

    const/16 v15, 0x9

    const v7, 0x7f0801b7

    invoke-direct {v9, v14, v15, v7, v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 11
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "WIFI"

    const/16 v15, 0xa

    const v5, 0x7f080246

    invoke-direct {v7, v14, v15, v5, v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 12
    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "MOTORDP"

    const/16 v3, 0xb

    invoke-direct {v13, v15, v3, v5, v14}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 13
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "MONOPOLY"

    const/16 v3, 0xc

    move-object/from16 v16, v13

    const v13, 0x7f08018e

    invoke-direct {v5, v15, v3, v13, v14}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 14
    new-instance v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v15, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v3, "MATTER"

    move-object/from16 v17, v5

    const/16 v5, 0xd

    invoke-direct {v14, v3, v5, v13, v15}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v9, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    aput-object v14, v3, v5

    .line 15
    sput-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    .line 3
    iget p1, p4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-virtual {v0}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object v0
.end method
