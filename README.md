# s9pr
S9y Theme in pinterest look


If you want to have related entries, you can copy the file plugin/serendipity_event_freetag.php  from the template directory into the /PLUGIN/serendipity_event_freetag/ directory

or

change the file /PLUGIN/serendipity_event_freetag/serendipity_event_freetag.php  

from
_______________________________________________________________________________________________________________________
   function getRelatedEntriesHtml(&$entries, $extended_smarty = false) {
        global $serendipity;

        if (!is_array($entries)) {
            return false;
        }

        $entrylink = $serendipity['baseURL'] . ($serendipity['rewrite'] == 'none' ? $serendipity['indexFile'] . '?/' : '/');

        if ($extended_smarty) {
            $return = array();
            $return['description'] = PLUGIN_EVENT_FREETAG_RELATED_ENTRIES;
            foreach($entries AS $entryid => $title) {
                $return['entries'][] = '<a href="' . serendipity_archiveURL($entryid, $title) . '" title="' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET)) . '">' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET)) . '</a>';
            }
        } else {
            $return = '<div class="serendipity_freeTag_related">' . PLUGIN_EVENT_FREETAG_RELATED_ENTRIES . '<ul class="plainList">';
            foreach($entries AS $entryid => $title) {
                $return .= '<li> <a href="' . serendipity_archiveURL($entryid, $title) . '" title="' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET)) . '">' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET)) . '</a></li>';
            }
            $return .= '</ul></div>';
        }
        return $return;
    }
____________________________________________________________________________________________________________
to:

    function getRelatedEntriesHtml(&$entries, $extended_smarty = false) {
        global $serendipity;

        if (!is_array($entries)) {
            return false;
        }

        $entrylink = $serendipity['baseURL'] . ($serendipity['rewrite'] == 'none' ? $serendipity['indexFile'] . '?/' : '/');

        if ($extended_smarty) {
            $return = array();
            $return['description'] = PLUGIN_EVENT_FREETAG_RELATED_ENTRIES; 
			foreach($entries AS $entryid => $title) {
				$properties = serendipity_fetchEntryProperties($entryid);
				$return['entries'][] = array(
					'url'      => serendipity_archiveURL($entryid, $title),
					'title'    => htmlspecialchars($title),
					'rlbild'   => htmlspecialchars($properties[ep_smallIMG]), 
					'sub_title'=> htmlspecialchars($properties[entry_subtitle])
				);
			}
			} else {
            $return = '<div class="serendipity_freeTag_related">' . PLUGIN_EVENT_FREETAG_RELATED_ENTRIES . '<ul class="plainList">';
            foreach($entries AS $entryid => $title) {
				 $properties = serendipity_fetchEntryProperties($entryid);
                $return .= '<li> <a href="' . serendipity_archiveURL($entryid, $title) . '" title="' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET)) . '">' . (function_exists('serendipity_specialchars') ? serendipity_specialchars($title) : htmlspecialchars($title, ENT_COMPAT, LANG_CHARSET))  . '</a></li>';
            }
            $return .= '</ul>hallo</div>';
			
        }
        return $return;
    }
