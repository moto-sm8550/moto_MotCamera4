.class final enum Lbu;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lbu;

.field public static final enum b:Lbu;

.field public static final enum c:Lbu;

.field public static final enum d:Lbu;

.field private static final synthetic f:[Lbu;


# instance fields
.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lbu;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbu;->a:Lbu;

    .line 2
    new-instance v1, Lbu;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lbu;->b:Lbu;

    .line 3
    new-instance v3, Lbu;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lbu;->c:Lbu;

    .line 4
    new-instance v5, Lbu;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lbu;->d:Lbu;

    const/4 v7, 0x4

    new-array v7, v7, [Lbu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lbu;->f:[Lbu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "isList"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lbu;->e:Z

    return-void
.end method

.method public static values()[Lbu;
    .locals 1

    sget-object v0, Lbu;->f:[Lbu;

    invoke-virtual {v0}, [Lbu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbu;

    return-object v0
.end method
