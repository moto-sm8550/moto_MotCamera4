.class public Las;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lds;


# instance fields
.field public final a:Lby;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lbp;->a()Lbp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lby;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Las;-><init>()V

    .line 2
    iput-object p1, p0, Las;->a:Lby;

    return-void
.end method
