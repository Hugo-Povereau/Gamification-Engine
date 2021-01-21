package amt.rmgg.gamification.entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Data
public class RuleEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private int threshold;

    @ManyToOne
    private BadgeEntity badge;

    @ManyToOne
    private EventTypeEntity eventType;

/*    @ManyToOne
    private ApplicationEntity application;*/

}
